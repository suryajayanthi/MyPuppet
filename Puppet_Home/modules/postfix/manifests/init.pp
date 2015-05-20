# Class: postfix
#
# This module manages postfix
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class postfix {
  include postfix::install
  include postfix::config
  include postfix::service
}
