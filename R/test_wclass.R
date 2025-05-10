# pillar_shaft.seekr_path = function(x, ...) {
#   stop("")
#   tmp = fs::as_fs_path(names(x))
#   fs:::pillar_shaft.fs_path(tmp, ...)
# }
#
# type_sum.seekr_path = function(x) {
#   "seekr_path"
# }
#
# devtools::load_all()
#
# dir = "../../Others"
# dir = fs::path_abs(dir)
# found = seekr::seek_dir("(?i)select", dir, "(?i)\\.(r|sql|txt)$")
#
# test = dplyr::slice_sample(found, n = 5)
#
# x = test$path
# names(x) = fs::path_rel(x, dir)
# class(x) = c("seekr_path", "fs_path", "character")
#
# test$path = x
#
# test
#
# sloop::s3_dispatch(pillar.)
#
#
