erlang*:::gc_major-start
{
    self->ts = timestamp;
}

erlang*:::gc_major-end
/self->ts/
{
    @ = quantize(timestamp - self->ts);
    self->ts = 0;
}

