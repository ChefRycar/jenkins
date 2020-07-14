pkg_name=jenkins
pkg_origin=workshop
pkg_version=2.176.2
pkg_maintainer="Nick Rycar <nrycar@chef.io>"
pkg_description="Extending the Jenkins package developed by Indellient & Chef Training"
pkg_license=('mit')
pkg_upstream_url="https://jenkins.io/"
pkg_source="http://mirrors.jenkins.io/war-stable/${pkg_version}/jenkins.war"
pkg_shasum="33a6c3161cf8de9c8729fd83914d781319fd1569acf487c7b1121681dba190a5"
pkg_deps=(core/jre8 core/curl core/git)
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
