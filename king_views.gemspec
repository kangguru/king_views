# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{king_views}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Georg Leciejewski"]
  s.date = %q{2010-04-16}
  s.description = %q{Clean up your Forms using king_form for dl or labeled forms. Use king_list for an easy markup of tables in your lists and dl-enabled listings in your detail views. }
  s.email = %q{gl@salesking.eu}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "init.rb",
     "king_form/MIT-LICENSE",
     "king_form/README.rdoc",
     "king_form/Rakefile",
     "king_form/init.rb",
     "king_form/lib/king_form.rb",
     "king_form/lib/king_form/builder/base.rb",
     "king_form/lib/king_form/builder/definition_list.rb",
     "king_form/lib/king_form/builder/form_fields.rb",
     "king_form/lib/king_form/builder/form_fields_overrides.rb",
     "king_form/lib/king_form/builder/labeled.rb",
     "king_form/lib/king_form/helper.rb",
     "king_form/lib/king_form/nested_form_helper.rb",
     "king_form/lib/king_form/overrides.rb",
     "king_form/tasks/king_forms_tasks.rake",
     "king_form/test/king_forms_test.rb",
     "king_form/test/test_helper.rb",
     "king_format/MIT-LICENSE",
     "king_format/README.rdoc",
     "king_format/Rakefile",
     "king_format/init.rb",
     "king_format/lib/helpers/date_helper.rb",
     "king_format/lib/helpers/formatting_helper.rb",
     "king_format/lib/helpers/money_helper.rb",
     "king_format/lib/king_format.rb",
     "king_format/lib/model_mixins/has_date_fields.rb",
     "king_format/lib/model_mixins/has_money_fields.rb",
     "king_format/lib/model_mixins/has_percent_fields.rb",
     "king_format/tasks/king_format_tasks.rake",
     "king_format/test/king_format_test.rb",
     "king_format/test/test_helper.rb",
     "king_list/MIT-LICENSE",
     "king_list/README.rdoc",
     "king_list/Rakefile",
     "king_list/init.rb",
     "king_list/lib/king_list.rb",
     "king_list/lib/king_list/app_helper.rb",
     "king_list/lib/king_list/builder/show.rb",
     "king_list/lib/king_list/builder/table.rb",
     "king_list/lib/king_list/list_helper.rb",
     "king_list/lib/king_list/overrides.rb",
     "king_list/tasks/king_list_tasks.rake",
     "king_list/test/king_list_test.rb",
     "king_list/test/test_helper.rb",
     "king_views.gemspec"
  ]
  s.homepage = %q{http://github.com/salesking/king_views}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ultraclean haml views with list and forms helpers for rails}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

