/* DO NOT EDIT THIS FILE DIRECTLY */
/**********************************************************************

  id.h -

  $Author: nobu $
  created at: Sun Oct 19 21:12:51 2008

  Copyright (C) 2007 Koichi Sasada

**********************************************************************/

#ifndef RUBY_ID_H
#define RUBY_ID_H

#define ID_SCOPE_SHIFT 3
#define ID_SCOPE_MASK 0x07
#define ID_LOCAL      0x00
#define ID_INSTANCE   0x01
#define ID_GLOBAL     0x03
#define ID_ATTRSET    0x04
#define ID_CONST      0x05
#define ID_CLASS      0x06
#define ID_JUNK       0x07
#define ID_INTERNAL   ID_JUNK

#define ID2ATTRSET(id) (((id)&~ID_SCOPE_MASK)|ID_ATTRSET)

#define symIFUNC ID2SYM(idIFUNC)
#define symCFUNC ID2SYM(idCFUNC)

#define RUBY_TOKEN_DOT2 128
#define RUBY_TOKEN_DOT3 129
#define RUBY_TOKEN_UPLUS 130
#define RUBY_TOKEN_UMINUS 131
#define RUBY_TOKEN_POW 132
#define RUBY_TOKEN_DSTAR 133
#define RUBY_TOKEN_CMP 134
#define RUBY_TOKEN_LSHFT 135
#define RUBY_TOKEN_RSHFT 136
#define RUBY_TOKEN_LEQ 137
#define RUBY_TOKEN_GEQ 138
#define RUBY_TOKEN_EQ 139
#define RUBY_TOKEN_EQQ 140
#define RUBY_TOKEN_NEQ 141
#define RUBY_TOKEN_MATCH 142
#define RUBY_TOKEN_NMATCH 143
#define RUBY_TOKEN_AREF 144
#define RUBY_TOKEN_ASET 145
#define RUBY_TOKEN_COLON2 146
#define RUBY_TOKEN_COLON3 147
#define RUBY_TOKEN(t) RUBY_TOKEN_##t

enum ruby_method_ids {
    idDot2 = RUBY_TOKEN(DOT2),
    idDot3 = RUBY_TOKEN(DOT3),
    idUPlus = RUBY_TOKEN(UPLUS),
    idUMinus = RUBY_TOKEN(UMINUS),
    idPow = RUBY_TOKEN(POW),
    idCmp = RUBY_TOKEN(CMP),
    idPLUS = '+',
    idMINUS = '-',
    idMULT = '*',
    idDIV = '/',
    idMOD = '%',
    idLT = '<',
    idLTLT = RUBY_TOKEN(LSHFT),
    idLE = RUBY_TOKEN(LEQ),
    idGT = '>',
    idGE = RUBY_TOKEN(GEQ),
    idEq = RUBY_TOKEN(EQ),
    idEqq = RUBY_TOKEN(EQQ),
    idNeq = RUBY_TOKEN(NEQ),
    idNot = '!',
    idBackquote = '`',
    idEqTilde = RUBY_TOKEN(MATCH),
    idNeqTilde = RUBY_TOKEN(NMATCH),
    idAREF = RUBY_TOKEN(AREF),
    idASET = RUBY_TOKEN(ASET),
    tPRESERVED_ID_BEGIN = 147,
    idNULL,
    idEmptyP,
    idRespond_to,
    idRespond_to_missing,
    idIFUNC,
    idCFUNC,
    id_core_set_method_alias,
    id_core_set_variable_alias,
    id_core_undef_method,
    id_core_define_method,
    id_core_define_singleton_method,
    id_core_set_postexe,
    id_core_hash_from_ary,
    id_core_hash_merge_ary,
    id_core_hash_merge_ptr,
    id_core_hash_merge_kwd,
    tPRESERVED_ID_END,
    tIntern,
    tMethodMissing,
    tLength,
    tSize,
    tGets,
    tSucc,
    tEach,
    tLambda,
    tSend,
    t__send__,
    tInitialize,
    tInitialize_copy,
    tInitialize_clone,
    tInitialize_dup,
    tUScore,
#define TOKEN2LOCALID(n) id##n = ((t##n<<ID_SCOPE_SHIFT)|ID_LOCAL)
    TOKEN2LOCALID(Intern),
    TOKEN2LOCALID(MethodMissing),
    TOKEN2LOCALID(Length),
    TOKEN2LOCALID(Size),
    TOKEN2LOCALID(Gets),
    TOKEN2LOCALID(Succ),
    TOKEN2LOCALID(Each),
    TOKEN2LOCALID(Lambda),
    TOKEN2LOCALID(Send),
    TOKEN2LOCALID(__send__),
    TOKEN2LOCALID(Initialize),
    TOKEN2LOCALID(Initialize_copy),
    TOKEN2LOCALID(Initialize_clone),
    TOKEN2LOCALID(Initialize_dup),
    TOKEN2LOCALID(UScore),
    tLAST_OP_ID = tPRESERVED_ID_END-1,
    idLAST_OP_ID = tLAST_OP_ID >> ID_SCOPE_SHIFT
};

#endif /* RUBY_ID_H */
