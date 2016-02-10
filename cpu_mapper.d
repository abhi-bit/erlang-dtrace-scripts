/*Would help in figuring out Erlang scheduler 
  crash(one happened in R16 I think)*/
#pragma D option defaultargs
inline int MAXCPUID = 1024;

dtrace:::BEGIN
{
    /*Input param $1 contains duration cpu mapper should run*/
    time = 0
}

/*change the executable name to beam if running VM without smp*/
profile:::profile-1000hz
/execname == "beam.smp"/
{
    @samples[pid, execname] = lquantize(cpu, 0, MAXCPUID, 1);
}

profile:::tick-1sec
{
    time++;
}

profile:::tick-1sec
/time == $1/
{
    exit(0);
}

dtrace:::END
{
    printa("\n PID: %-6d CMD: %s\n%@d", @samples);
}
