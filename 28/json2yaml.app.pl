use Dancer qw( get dance params);
use JSON   qw( decode_json );
use YAML   qw( Dump );

get '/:json' => sub {
    Dump(decode_json(
        params->{json}
    ));
}; dance;

