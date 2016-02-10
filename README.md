Erlang-dtrace-scripts
=====================

Written primarily to profile erlang based components within Couchbase.

Traditional profiling tools(`eprof`/`fprof`) in Erlang are painful and
often make Erlang VM to crawl. `dtrace` adds very small(mostly unnoticeable so far for me),
and helps glean info about GC, scheduler, function entry/return, mem, cpu,
message pass etc.

Overtime, I’ll keep pushing relevant D scripts in here. (Would also create
another repo for capturing similar stuff using SystemTap on Linux)

