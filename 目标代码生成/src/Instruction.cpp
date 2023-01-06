#include "Instruction.h"
#include "BasicBlock.h"
#include <iostream>
#include "Function.h"
#include "Type.h"
extern FILE* yyout;

Instruction::Instruction(unsigned instType, BasicBlock *insert_bb,bool GLO)
{
    prev = next = this;
    opcode = -1;
    this->instType = instType;
    if (insert_bb != nullptr && !GLO)
    {
        insert_bb->insertBack(this);
        parent = insert_bb;
    }
    else if(GLO){
        insert_bb->insertFront(this);
        parent = insert_bb;
    }
}

Instruction::~Instruction()
{
    parent->remove(this);
}

BasicBlock *Instruction::getParent()
{
    return parent;
}

void Instruction::setParent(BasicBlock *bb)
{
    parent = bb;
}

void Instruction::setNext(Instruction *inst)
{
    next = inst;
}

void Instruction::setPrev(Instruction *inst)
{
    prev = inst;
}

Instruction *Instruction::getNext()
{
    return next;
}

Instruction *Instruction::getPrev()
{
    return prev;
}

BinaryInstruction::BinaryInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb) : Instruction(BINARY, insert_bb,0)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

BinaryInstruction::~BinaryInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void BinaryInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[0]->getType()->toStr();
    switch (opcode)
    {
    case ADD:
        op = "add";
        break;
    case SUB:
        op = "sub";
        break;
    case MUL:
        op = "mul";
        break;
    case DIV:
        op = "sdiv";
        break;
    case MOD:
        op = "srem";
        break;
    default:
        break;
    }
    fprintf(yyout, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

CmpInstruction::CmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb): Instruction(CMP, insert_bb,0){
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setType();
    //std::cout<<dst->getType()->toStr()<<std::endl;
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

CmpInstruction::~CmpInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void CmpInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[1]->getType()->toStr();
    switch (opcode)
    {
    case E:
        op = "eq";
        break;
    case NE:
        op = "ne";
        break;
    case L:
        op = "slt";
        break;
    case LE:
        op = "sle";
        break;
    case G:
        op = "sgt";
        break;
    case GE:
        op = "sge";
        break;
    default:
        op = "";
        break;
    }

    fprintf(yyout, "  %s = icmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

UncondBrInstruction::UncondBrInstruction(BasicBlock *to, BasicBlock *insert_bb) : Instruction(UNCOND, insert_bb,0)
{
    branch = to;
}

void UncondBrInstruction::output() const
{
    //std::cout<<"1"<<std::endl;
    fprintf(yyout, "  br label %%B%d\n", branch->getNo());
}

void UncondBrInstruction::setBranch(BasicBlock *bb)
{
    branch = bb;
}

BasicBlock *UncondBrInstruction::getBranch()
{
    return branch;
}

CondBrInstruction::CondBrInstruction(BasicBlock*true_branch, BasicBlock*false_branch, Operand *cond, BasicBlock *insert_bb) : Instruction(COND, insert_bb,0){
    this->true_branch = true_branch;
    this->false_branch = false_branch;
    cond->addUse(this);
    operands.push_back(cond);
}

CondBrInstruction::~CondBrInstruction()
{
    operands[0]->removeUse(this);
}

void CondBrInstruction::output() const
{
    //std::cout<<"1"<<std::endl;
    std::string cond, type;
    cond = operands[0]->toStr();
    type = operands[0]->getType()->toStr();
    int true_label = true_branch->getNo();
    int false_label = false_branch->getNo();
    fprintf(yyout, "  br i1 %s, label %%B%d, label %%B%d\n", cond.c_str(), true_label, false_label);
}

void CondBrInstruction::setFalseBranch(BasicBlock *bb)
{
    false_branch = bb;
}

BasicBlock *CondBrInstruction::getFalseBranch()
{
    return false_branch;
}

void CondBrInstruction::setTrueBranch(BasicBlock *bb)
{
    true_branch = bb;
}

BasicBlock *CondBrInstruction::getTrueBranch()
{
    return true_branch;
}

RetInstruction::RetInstruction(Operand *src, BasicBlock *insert_bb) : Instruction(RET, insert_bb,0)
{
    if(src != nullptr)
    {
        operands.push_back(src);
        src->addUse(this);
    }
}

RetInstruction::~RetInstruction()
{
    if(!operands.empty())
        operands[0]->removeUse(this);
}

void RetInstruction::output() const
{
    if(operands.empty())
    {
        fprintf(yyout, "  ret void\n");
    }
    else
    {
        std::string ret, type;
        ret = operands[0]->toStr();
        type = operands[0]->getType()->toStr();
        fprintf(yyout, "  ret %s %s\n", type.c_str(), ret.c_str());
    }
}

AllocaInstruction::AllocaInstruction(Operand *dst, SymbolEntry *se, BasicBlock *insert_bb) : Instruction(ALLOCA, insert_bb,0)
{
    operands.push_back(dst);
    dst->setDef(this);
    this->se = se;
}

AllocaInstruction::~AllocaInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
}

void AllocaInstruction::output() const
{
    std::string dst, type;
    dst = operands[0]->toStr();
    type = se->getType()->toStr();
    fprintf(yyout, "  %s = alloca %s, align 4\n", dst.c_str(), type.c_str());
}

LoadInstruction::LoadInstruction(Operand *dst, Operand *src_addr, BasicBlock *insert_bb) : Instruction(LOAD, insert_bb,0)
{
    operands.push_back(dst);
    operands.push_back(src_addr);
    dst->setDef(this);
    src_addr->addUse(this);
}

LoadInstruction::~LoadInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void LoadInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string src_type;
    std::string dst_type;
    dst_type = operands[0]->getType()->toStr();
    src_type = operands[1]->getType()->toStr();
    fprintf(yyout, "  %s = load %s, %s %s, align 4\n", dst.c_str(), dst_type.c_str(), src_type.c_str(), src.c_str());
}

StoreInstruction::StoreInstruction(Operand *dst_addr, Operand *src, BasicBlock *insert_bb) : Instruction(STORE, insert_bb,0)
{
    operands.push_back(dst_addr);
    operands.push_back(src);
    dst_addr->addUse(this);
    src->addUse(this);
}

StoreInstruction::~StoreInstruction()
{
    operands[0]->removeUse(this);
    operands[1]->removeUse(this);
}

void StoreInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string dst_type = operands[0]->getType()->toStr();
    std::string src_type = operands[1]->getType()->toStr();

    fprintf(yyout, "  store %s %s, %s %s, align 4\n", src_type.c_str(), src.c_str(), dst_type.c_str(), dst.c_str());
}

SingleInstruction::SingleInstruction(unsigned opcode , Operand *dst, Operand *src, BasicBlock *insert_bb) : Instruction(SINGLE, insert_bb,0)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src);
    dst->setDef(this);
    src->addUse(this);
}

SingleInstruction::~SingleInstruction()
{
    operands[0]->setDef(nullptr);
    if(operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void SingleInstruction::output() const
{
    //std::cout<<"single"<<std::endl;
    std::string s1, s2, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    type = operands[1]->getType()->toStr();
    switch (opcode)
    {
    case MIN:
        op = "sub";
        fprintf(yyout, "  %s = %s nsw %s 0, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str());
        break;
    case NOT:
        op = "xor";
        fprintf(yyout, "  %s = %s i1 %s , true\n", s1.c_str(), op.c_str(), s2.c_str());
        break;
    case POS:
        break;
    default:
        break;
    }
    
    
}

ConverInstruction::ConverInstruction(int mo,
                                Operand* dst,
                                 Operand* src,
                                 BasicBlock* insert_bb)
    : Instruction(CONV, insert_bb) {
    mode=mo;
    operands.push_back(dst);
    operands.push_back(src);
    dst->setintType();
    dst->setDef(this);
    src->addUse(this);
}

ConverInstruction::~ConverInstruction() {
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void ConverInstruction::output() const {
    Operand* dst = operands[0];
    Operand* src = operands[1];
    if(mode)
        fprintf(yyout, "  %s = zext i1 %s to i32\n", dst->toStr().c_str(), src->toStr().c_str());
}

CallInstruction::CallInstruction(Operand* dst,
                                 SymbolEntry* func,
                                 std::vector<Operand*> params,
                                 BasicBlock* insert_bb)
    : Instruction(CALL, insert_bb),func(func),dst(dst){
    
    operands.push_back(dst);
    if (dst){
        dst->setDef(this);
        //std::cout<<"1"<<std::endl;
    }
    if(!params.empty()){
        for (auto param : params) {
            operands.push_back(param);
            param->addUse(this);
        }
    }
}


CallInstruction::~CallInstruction() {
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
    //operands[1]->removeUse(this);
}

void CallInstruction::output() const {
    //std::cout<<"1"<<std::endl;
    fprintf(yyout, "  ");
    FunctionType* functype = dynamic_cast<FunctionType*>(func->getType());
    if (operands[0] && functype->getRetType()!=TypeSystem::voidType)
        fprintf(yyout, "%s = ", operands[0]->toStr().c_str());
    FunctionType* type = (FunctionType*)(func->getType());
    fprintf(yyout, "call %s %s(", type->getRetType()->toStr().c_str(),
            func->toStr().c_str());
    
    for (long unsigned int i = 1; i < operands.size(); i++) {
        if (i != 1)
            fprintf(yyout, ", ");
        fprintf(yyout, "%s %s", operands[i]->getType()->toStr().c_str(),
                operands[i]->toStr().c_str());
    }
    fprintf(yyout, ")\n");
    //std::cout<<"1"<<std::endl;
}

MachineOperand* Instruction::genMachineOperand(Operand* ope)
{
    auto se = ope->getEntry();
    MachineOperand* mope = nullptr;
    if (se->isConstant())
        mope = new MachineOperand(MachineOperand::IMM, dynamic_cast<ConstantSymbolEntry*>(se)->getValue());
    else if (se->isTemporary())
        mope = new MachineOperand(MachineOperand::VREG, dynamic_cast<TemporarySymbolEntry*>(se)->getLabel());
    else if (se->isVariable()) 
    {
        auto id_se = dynamic_cast<IdentifierSymbolEntry*>(se);
        if (id_se->isGlobal())
            mope = new MachineOperand(id_se->toStr().c_str());
        else if (id_se -> isParam()) 
        {
            if (id_se -> getParamNo() < 4)
            {
                int temp = id_se -> getParamNo();
                mope = new MachineOperand(MachineOperand::REG, temp);
            }
            else
            {
                mope = new MachineOperand(MachineOperand::REG, 3);
            }
        }
    }
    return mope;
}
MachineOperand* Instruction::genMachineReg(int reg) 
{
    return new MachineOperand(MachineOperand::REG, reg);
}

MachineOperand* Instruction::genMachineVReg() 
{
    return new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
}

MachineOperand* Instruction::genMachineImm(int val) 
{
    return new MachineOperand(MachineOperand::IMM, val);
}

MachineOperand* Instruction::genMachineLabel(int block_no)
{
    std::ostringstream buf;
    buf << ".L" << block_no;
    std::string label = buf.str();
    return new MachineOperand(label);
}

void AllocaInstruction::genMachineCode(AsmBuilder* builder)
{
    /* HINT:
    * Allocate stack space for local variabel
    * Store frame offset in symbol entry */
    auto cur_func = builder->getFunction();
    int offset = cur_func->AllocSpace(4);
    dynamic_cast<TemporarySymbolEntry*>(operands[0]->getEntry())->setOffset(-offset);
}

void LoadInstruction::genMachineCode(AsmBuilder* builder)
{
    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;
    // Load global operand
    if(operands[1]->getEntry()->isVariable()
    && dynamic_cast<IdentifierSymbolEntry*>(operands[1]->getEntry())->isGlobal())
    {
        auto dst = genMachineOperand(operands[0]);
        auto internal_reg1 = genMachineVReg();
        auto internal_reg2 = new MachineOperand(*internal_reg1);
        auto src = genMachineOperand(operands[1]);
        // example: load r0, addr_a
        cur_inst = new LoadMInstruction(cur_block, internal_reg1, src);
        cur_block->InsertInst(cur_inst);
        // example: load r1, [r0]
        cur_inst = new LoadMInstruction(cur_block, dst, internal_reg2);
        cur_block->InsertInst(cur_inst);
    }
    // Load local operand
    else if(operands[1]->getEntry()->isTemporary()
    && operands[1]->getDef()
    && operands[1]->getDef()->isAlloc())
    {
        // example: load r1, [r0, #4]
        auto dst = genMachineOperand(operands[0]);
        auto src1 = genMachineReg(11);
        auto src2 = genMachineImm(dynamic_cast<TemporarySymbolEntry*>(operands[1]->getEntry())->getOffset());
        cur_inst = new LoadMInstruction(cur_block, dst, src1, src2);
        cur_block->InsertInst(cur_inst);
    }
    // Load operand from temporary variable
    else
    {
        // example: load r1, [r0]
        auto dst = genMachineOperand(operands[0]);
        auto src = genMachineOperand(operands[1]);
        cur_inst = new LoadMInstruction(cur_block, dst, src);
        cur_block->InsertInst(cur_inst);
    }
}

void StoreInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    auto cur_block = builder->getBlock();
    MachineInstruction* cur_inst = nullptr;
    MachineOperand* dst = genMachineOperand(operands[0]);
    MachineOperand* src = genMachineOperand(operands[1]);
    auto t = dynamic_cast<IdentifierSymbolEntry*>(operands[0]->getEntry());
    if (operands[1]->getEntry()->isConstant()) 
    {
        MachineOperand* temp = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, temp, src);
        cur_block->InsertInst(cur_inst);
        src = new MachineOperand(*temp);
    }
    if (operands[0]->getEntry()->isTemporary() && operands[0] -> getDef() && operands[0]->getDef()->isAlloc()) 
    {
        MachineOperand* temp = genMachineReg(11);
        cur_inst = new StoreMInstruction(cur_block, src, temp, genMachineImm(dynamic_cast<TemporarySymbolEntry*>(operands[0] -> getEntry())->getOffset()));
        cur_block -> InsertInst(cur_inst);
    }
    else if (operands[0]->getEntry()->isVariable() && t -> isGlobal()) 
    {
        MachineOperand *temp = genMachineVReg();
        cur_block->InsertInst(new LoadMInstruction(cur_block, temp, dst));
        cur_block->InsertInst(new StoreMInstruction(cur_block, src, temp));
    }


}

void CmpInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    // MachineBlock * cur_block = builder->getBlock();
    // MachineOperand * dst = genMachineOperand(operands[1]);
    // MachineOperand * src1 = genMachineOperand(operands[1]);
    // MachineOperand * src2 = genMachineOperand(operands[2]);
    // MachineInstruction* cur_inst = nullptr;
    // if (src1->isImm()) 
    // {
    //     MachineOperand * temp_reg = genMachineVReg();
    //     cur_inst = new LoadMInstruction(cur_block, temp_reg, src1);
    //     cur_block->InsertInst(cur_inst);
    //     src1 = new MachineOperand(*temp_reg);
    // }
    // if (src2->isImm()) 
    // {
    //     MachineOperand * temp_reg = genMachineVReg();
    //     cur_inst = new LoadMInstruction(cur_block, temp_reg, src2);
    //     cur_block->InsertInst(cur_inst);
    //     src2 = new MachineOperand(*temp_reg);
    // }
    // cur_inst = new CmpMInstruction(cur_block, src1, src2, opcode);
    // cur_block->InsertInst(cur_inst);
    // if (opcode >= 2 && opcode <= 5) 
    // {
    //     cur_block->InsertInst(new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(1), opcode));
    //     cur_block->InsertInst(new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(operands[0]), genMachineImm(0), 7 - opcode));
    // }
    auto cur_block = builder->getBlock();
    auto src1 = genMachineOperand(operands[1]);
        auto src2 = genMachineOperand(operands[2]);
        MachineInstruction* cur_inst = nullptr;
        if (src1->isImm()) {
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, 
                                            internal_reg, src1);
            cur_block->InsertInst(cur_inst);
            src1 = new MachineOperand(*internal_reg);
        }
        if (src2->isImm() &&
            ((ConstantSymbolEntry*)(operands[2]->getEntry()))->getValue() >
                255) {
            auto internal_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block,
                                            internal_reg, src2);
            cur_block->InsertInst(cur_inst);
            src2 = new MachineOperand(*internal_reg);
        }
        cur_inst = new CmpMInstruction(cur_block,  src1,
                                       src2, opcode);
        cur_block->InsertInst(cur_inst);
        if (opcode >= CmpInstruction::L && opcode <= CmpInstruction::GE) {
            auto dst = genMachineOperand(operands[0]);
            auto trueOperand = genMachineImm(1);
            auto falseOperand = genMachineImm(0);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           trueOperand, opcode);
            cur_block->InsertInst(cur_inst);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           falseOperand, 7 - opcode);
            cur_block->InsertInst(cur_inst);
        } else if (opcode == CmpInstruction::E) {
            auto dst = genMachineOperand(operands[0]);
            auto trueOperand = genMachineImm(1);
            auto falseOperand = genMachineImm(0);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           trueOperand, E);
            cur_block->InsertInst(cur_inst);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           falseOperand, NE);
            cur_block->InsertInst(cur_inst);

        } else if (opcode == CmpInstruction::NE) {
            auto dst = genMachineOperand(operands[0]);
            auto trueOperand = genMachineImm(1);
            auto falseOperand = genMachineImm(0);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           trueOperand, NE);
            cur_block->InsertInst(cur_inst);
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst,
                                           falseOperand, E);
            cur_block->InsertInst(cur_inst);
        }
}

void UncondBrInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    MachineBlock *cur_block = builder->getBlock();
    std::string temp =".L" + std::to_string(branch->getNo());
    //br to .L NO
    cur_block->InsertInst(new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(temp)));
}

void CondBrInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    MachineBlock *cur_block = builder->getBlock();
    std::string temp =".L" + std::to_string(true_branch->getNo());
    BranchMInstruction *cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(temp), cur_block->getCmpNo());
    cur_block->InsertInst(cur_inst);
    temp =  ".L" + std::to_string(false_branch->getNo());
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, new MachineOperand(temp));
    cur_block->InsertInst(cur_inst);
}

void RetInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    /* HINT:
    * 1. Generate mov instruction to save return value in r0
    * 2. Restore callee saved registers and sp, fp
    * 3. Generate bx instruction */
    auto cur_block = builder->getBlock();
    if (!operands.empty()) 
    {
        auto *temp = new MovMInstruction(cur_block, MovMInstruction::MOV, new MachineOperand(MachineOperand::REG, 0), genMachineOperand(operands[0]));
        cur_block->InsertInst(temp);
    }
    MachineOperand *sp = new MachineOperand(MachineOperand::REG, 13);
    MachineOperand *size =new MachineOperand(MachineOperand::IMM, builder->getFunction()->AllocSpace(0));
    cur_block->InsertInst(new BinaryMInstruction(cur_block, BinaryMInstruction::ADD,sp, sp, size));
    MachineOperand *lr = new MachineOperand(MachineOperand::REG, 14);
    cur_block->InsertInst(new BranchMInstruction(cur_block, BranchMInstruction::BX, lr));
}

void BinaryInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO:
    // complete other instructions
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src1 = genMachineOperand(operands[1]);
    auto src2 = genMachineOperand(operands[2]);
    /* HINT:
    * The source operands of ADD instruction in ir code both can be immediate num.
    * However, it's not allowed in assembly code.
    * So you need to insert LOAD/MOV instrucrion to load immediate num into register.
    * As to other instructions, such as MUL, CMP, you need to deal with this situation, too.*/
    MachineInstruction* cur_inst = nullptr;
    if(src1->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src1);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*internal_reg);
    }
    if(src2->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src2);
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*internal_reg);
    }
    switch (opcode)
    {
    case ADD:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, src1, src2);
        break;
    case SUB:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, src1, src2);
        break;
    case AND:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::AND, dst, src1, src2);
        break;
    case OR:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::OR, dst, src1, src2);
        break;
    case MUL:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, dst, src1, src2);
        break;
    case DIV:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
        break;
    case MOD: 
        {
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
            MachineOperand* temp = new MachineOperand(*dst);
            cur_block->InsertInst(cur_inst);
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, temp, dst, new MachineOperand(*src2));
            cur_block->InsertInst(cur_inst);
            dst = new MachineOperand(*temp);
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, new MachineOperand(*src1), temp);
            break;
        }
    default:
        break;
    }
    cur_block->InsertInst(cur_inst);
}


void SingleInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src = genMachineOperand(operands[1]);
    MachineInstruction* cur_inst = nullptr;
    if(src->isImm())
    {
        auto internal_reg = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, internal_reg, src);
        cur_block->InsertInst(cur_inst);
        src = new MachineOperand(*internal_reg);
    }
    int i=0;
    auto temp_reg = genMachineVReg();
    auto temp_r = new MachineOperand(*temp_reg);
    MachineOperand *ZERO = new MachineOperand(MachineOperand::IMM,0);
    MachineOperand *TRUE1 = new MachineOperand(MachineOperand::IMM,1);
    switch (opcode)
    {
    case MIN:
        i++;
        cur_inst = new LoadMInstruction(cur_block, temp_r, ZERO);
        cur_block->InsertInst(cur_inst);
        cur_inst = new SingleMInstruction(cur_block, SingleMInstruction::MIN, dst, src, temp_reg);
        break;
    case NOT:
        //std::cout<<"NOT"<<std::endl;
        i++;
        cur_inst = new LoadMInstruction(cur_block, temp_r, TRUE1);
        cur_block->InsertInst(cur_inst);
        cur_inst = new SingleMInstruction(cur_block, SingleMInstruction::NOT, dst, src, temp_reg);
        // cur_inst=new CmpMInstruction(cur_block,src,temp_reg,0);
        break;
    case POS:
        break;
    default:
        break;
    }
    //std::cout<<i<<std::endl;
    cur_block->InsertInst(cur_inst);
}

void ConverInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src = genMachineOperand(operands[1]);
    //std::cout<<src->isVReg()<<std::endl;
    auto cur_inst =new MovMInstruction(cur_block, MovMInstruction::MOV, dst, src);
    cur_block->InsertInst(cur_inst);
}

void CallInstruction::genMachineCode(AsmBuilder* builder)
{
    // TODO
    auto cur_block = builder->getBlock();
    MachineOperand* operand;  
    MachineInstruction* cur_inst;
    int index = 0;
    long unsigned int i = 1;
    while(i != operands.size()) 
    {
        if (index == 4)
        {
            break;
        }
        if (genMachineOperand(operands[index+1])->isImm()) 
        {
            cur_block->InsertInst(new LoadMInstruction(cur_block, genMachineReg(index), genMachineOperand(operands[index+1])));
        } 
        else
        {
            cur_block->InsertInst(new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineReg(index), genMachineOperand(operands[index+1])));
        }
        index++;
        i++;
    }
    for (int i = operands.size() - 1; i >= 5; i--) 
    {
        operand = genMachineOperand(operands[i]);
        if (operand->isImm()) 
        {
            auto temp_reg = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, temp_reg, operand);
            cur_block->InsertInst(cur_inst);
            operand = genMachineVReg();
        }
        std::vector<MachineOperand*> temp;
        cur_block->InsertInst(new StackMInstrcuton(cur_block, StackMInstrcuton::PUSH, temp, operand));
    }
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::BL, new MachineOperand(func->toStr().c_str()));
    cur_block->InsertInst(cur_inst);
    if (operands.size() > 5) 
    {
        auto sp = genMachineReg(13); 
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD,sp, sp, genMachineImm((operands.size() - 5) * 4));
        cur_block->InsertInst(cur_inst);
    }
    if (dst) 
    {
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, genMachineOperand(dst), genMachineReg(0));
        cur_block->InsertInst(cur_inst);
    }


}
