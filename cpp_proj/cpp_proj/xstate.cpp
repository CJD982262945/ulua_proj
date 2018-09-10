#include "xstate.h"


xstate::xstate()
{
	//lua_State �зŵ��� lua ������еĻ�����ע������ж�ջ��������������ĵ����ݡ�
	L = luaL_newstate();
	luaL_openlibs(L);
	tag = "state";
}

xstate::~xstate()
{
	lua_close(L);
	L = NULL;
}

void xstate::exec()
{
	lua_pushstring(L, "hello");
	lua_pushnumber(L, 3);
	lua_pushstring(L, "world");
	
	//��ָ��λ�õ�element �ӵ�ջ��
	lua_pushvalue(L, 3);

	//��ջ��element�Ƶ�ָ��λ��
	lua_insert(L, 2);
	LUAPRINT(tag);

	//�Ƴ�idx�����ϵ�ֵ  
	lua_remove(L, 2);
	LUAPRINT(tag);

	//����ջ��Ԫ�أ����滻����idxλ�õ�ֵ
	lua_replace(L, 1);
	LUAPRINT(tag);

	//��ջ����ʼ�������� ���ڶ���������-1����ȫ������
	lua_pop(L, 1);
	LUAPRINT(tag);
}
