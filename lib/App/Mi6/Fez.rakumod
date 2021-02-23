unit class App::Mi6::Fez;

use Fez::Util::Config;
use App::Mi6::Util;

method able() {
    my $proc = mi6run "fez", "--version", :!out, :!err;
    return $proc == 0;
}

method username() {
    config-value('un');
}

method upload($tarball) {
    mi6run "fez", "--file=$tarball", "upload";
}
