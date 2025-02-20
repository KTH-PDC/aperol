module Jekyll
  class OrcidTag < Liquid::Tag
    def initialize(tag_name, orcid, tokens)
      super
      @orcid = orcid.strip
    end

    def render(context)
      img_tag = "<img src=\"/assets/images/ORCID_iD.svg\" alt=\"ORCID iD Icon\" width=\"16\" height=\"16\" style=\"vertical-align: super;\">"
      "<a href=\"https://orcid.org/#{@orcid}\" target=\"_blank\">#{img_tag}</a>"
    end

  end
end

Liquid::Template.register_tag('orcid', Jekyll::OrcidTag)

