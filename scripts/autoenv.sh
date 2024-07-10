# `z` was not an alias but a function.  So redefine one
# unalias z

z() {
	local _pwd
	_pwd=${PWD}
	__zoxide_z $@
	autoenv_init "${_pwd}"
	return 0
}
