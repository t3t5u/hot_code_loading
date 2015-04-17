function setup {
    cp -f t0.beam t.beam
}

function sep {
    echo "\n\n\n"
}

sh build.sh
export ERL_CRASH_DUMP="/dev/null"
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:a(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:b(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:ca(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:cb(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:cc(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:cd(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:d(t, d, 3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:x(3).' -s init stop
sep
setup; erl -boot start_clean -eval 'dbg:start(), dbg:tracer(), dbg:p(all, all), t:y(3).' -s init stop
sep
