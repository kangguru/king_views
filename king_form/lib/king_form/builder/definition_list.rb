module KingForm
  module Builder
    # Subclass of the KingFormBuilder for forms/fields wrapped inside a Definition List dl>dt,dd.
      # This class just overides the nessessary html wrapping function of the KingFormBuilder.
      #
      # ====Example haml
      #  - dl_form_for(current_object) do |f|
      #    = f.section _('legend.user.details') do
      #      = f.text :first_name
      #      = f.text :last_name
      #
      # => # <fieldset>
      #       <legend>User Details</legend>
      #       <dl>
      #         <dt>Firstname</dt>
      #         <dd><input type='text' value='Otto'/></dd>
      #         <dt>Lastname</dt>
      #         <dd><input type='text' value='Bismark'/></dd>
      #       </dl>
      #      </fieldset>
      #
    class DefinitionList < KingForm::Builder::Base

      # Create a section(fieldset) within a form
      # A section is a group of related object information with name/value pairs,
      # like all dates of an object or the users name fields(last/first/title/nick).
      #
      # A section html consists of a fieldset > legend > dl > dt > dd
      # The dt holds the title/description (DefinitionType) of the current field
      # The dd holds the value.
      # This wrapup is preferred over ul/li or other listing types because of
      # the semantic meaning of the html
      #
      #===Example haml
      #    = f.section _('legend.user.details') do
      #      = f.text :first_name
      #      = f.text :last_name
      #
      # => # <fieldset>
      #       <legend>User Details</legend>
      #       <dl>
      #         <dt>Firstname</dt>
      #         <dd><input type='text' value='Otto'/></dd>
      #         <dt>Lastname</dt>
      #         <dd><input type='text' value='Bismark'/></dd>
      #       </dl>
      #      </fieldset>
      #
      #    = f.section 'User', :class=>'settings', :dl=>{:class=>'left'}
      #
      # => # <fieldset class='settings'>
      #       <legend>User</legend>
      #       <dl class='left'>
      def section(title = nil, options = {}, &block)
        raise ArgumentError if title && !title.is_a?(String)
        dl_options = options[:dl] || {}
        @template.haml_tag :fieldset, options do
          @template.haml_tag :legend, title unless title.blank?
          @template.haml_tag :dl, dl_options do
            @template.haml_concat( @template.capture_haml(&block) )
          end
        end
      end

      # add titles to Input-Tag and embed/wrap in dt/dd
      #
      # ==== Parameter
      # fieldname_or_title<Symbol, String>:: The fieldname to be used as the title in dt
      # tags<String>:: a bunch of html/haml tags 
      # options<Hash{Symbol=>String}>: Hash with following keys
      # ==== Options:
      #     :dt => options hash for dt
      #     :dd => options hash for dd
      def tag_wrapper(fieldname_or_title, tags, options = {})
        if @config[:bundle] # called from "bundle" => dt/dd-wrapping is made outside
          @bundle_counter += 1
          tags.to_s
        elsif @config[:table] # called from "table" => build a table cell (td)
          # Only in first row: Build column header
          if @config[:row_number] == 1
            @config[:column_header].push :title => build_title(fieldname_or_title),
                                         :options => { :align => options[:align] || 'left' }
          end
          @template.capture_haml do #MUST return as string
            @template.haml_tag(:td, tags.to_s, options)
          end
        else #wrap or no wrap
          @no_wrap ? tags : dt_tag(fieldname_or_title, options[:dt]) + dd_tag(tags.to_s, options[:dd])
        end
      end

      # Show multiple inputs in one line (dd tag)
      # === Example haml
      # - f.bundle _('Gender and Title') do
      #   = f.selection :gender
      #   = f.text :title, :medium
      #
      def bundle(title = nil, options = {}, &block)
        @config[:bundle] = true
        @bundle_counter = 0
        tags = @template.capture(&block)
        @config[:bundle] = false
        @template.concat( @config[:table] ? tag_wrapper(title, tags) : tag_wrapper(title, tags, :dt => options, :dd => { :class => "elements_#{@bundle_counter}" }) )
      end

      # The definition type dt tag
      def dt_tag(fieldname_or_title, options = {})
        fieldname_or_title.blank? ? "" : content_tag(:dt, build_title(fieldname_or_title), options)
      end

      # Build dd-tag
      # Parameter "tags" may be a string or an array of strings
      def dd_tag(tags, options = {})
        tags.blank? ? '' : content_tag(:dd, tags.to_s, options)
      end

    end
  end
end