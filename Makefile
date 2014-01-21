PROJECT = folsom

ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning

DEPS_DIR = ../../deps
DEPS = bear meck

dep_bear = https://github.com/goldensurfer/bear master
dep_meck = git://github.com/eproxus/meck 0.8.1

include ../../erlang.mk
