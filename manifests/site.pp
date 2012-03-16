# Manifest: site
#
# Global settings, constants, execs as well as the imports of local
# manifests.

filebucket { main: server => puppet }

Exec {
	logoutput => on_failure,
	path => [
		"/bin",
		"/sbin",
		"/usr/bin",
		"/usr/sbin",
		"/usr/local/bin",
		"/usr/local/sbin",
	]
}

import "classes/*"
import "groups/*"
import "users/*"
import "nodes.pp"
