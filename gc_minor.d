erlang*:::gc_minor-start
{
    self->ts = timestamp;
}

erlang*:::gc_minor-end
/self->ts/
{
    @ = quantize(timestamp - self->ts);
    self->ts = 0;
}

