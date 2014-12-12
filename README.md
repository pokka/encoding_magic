= encoding Magic

revert magic_encoding

just little modify from [magic_encoding](https://github.com/m-ryan/magic_encoding)

== Installation

  gem install encoding_magic

== Usage

you can call the tool from the console with default parameters like so

  encoding_magic

this will striped every ".rb" file in the working directory (recursively) with the following line :

  # -*- encoding : utf-8 -*-

Notes :
- Don't use without git
- Don't commit with other changes
- existing magic comments are replaced
- the rest of the file remains unchanged

you can pass options to the tool to specify the desired encoding and the path where you want the tool to run, for example :

  encoding_magic 'utf-8' /path/to/ruby/project
