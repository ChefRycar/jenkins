pkg_name=jenkins
pkg_origin=workshop
pkg_version=2.235.1
pkg_maintainer="Nick Rycar <nrycar@chef.io>"
pkg_description="Extending the Jenkins package developed by Indellient & Chef Training"
pkg_license=('mit')
pkg_upstream_url="https://jenkins.io/"
pkg_source="http://mirrors.jenkins.io/war-stable/${pkg_version}/jenkins.war"
pkg_shasum="6375eb3a09bfde4c1fb3a7296985e225bfe2007153990a8b587e3f5f926f675d"
pkg_deps=(core/openjdk11 core/curl core/git)
pkg_svc_user="root"

pkg_exports=(
  [port]=jenkins.http.port
)
pkg_exposes=(port)

do_unpack() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  cp "${HAB_CACHE_SRC_PATH}"/"${pkg_filename}" "${pkg_prefix}"/jenkins.war
}
