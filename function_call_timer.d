/*capture nif, bif, function, efile_drv entry*/
erlang*:::*-entry
{
    self->ts = timestamp;
}

erlang*:::*-return
/self->ts/
{
    @samples[copyinstr(arg1)] = quantize(timestamp - self->ts);
}

dtrace:::END
{
    printa("\n%-60s %@d", @samples);
}
