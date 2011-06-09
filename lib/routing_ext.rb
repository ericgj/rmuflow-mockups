module Nanoc3
  module Helpers
    module Routing

      # for human-readable url
      # note it does NOT CGI.escape as this is the actual filename
      def base_filename(it)
        it.identifier.split('/').compact.map do |part|
          part.downcase.tr(' `~!@#$%^&*()=+[]{}\"\'<>,|','-')
        end.join('/')
      end
      
    end
  end
end