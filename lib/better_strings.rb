require 'better_strings/version'
require 'better_strings/extensions'

String.send :include, BetterStrings::Extensions::PublicInstanceMethods
String.send :extend, BetterStrings::Extensions::PublicClassMethods
