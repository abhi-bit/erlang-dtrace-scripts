/*capture nif, bif, function, efile_drv entry*/
erlang*:::*-entry
{
    @samples[copyinstr(arg1)] = count();
}

dtrace:::END
{
    printa("\n%-60s %@d", @samples);
}
