# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "king_views"
  s.version = "1.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Georg Leciejewski"]
  s.date = "2012-02-17"
  s.description = "Clean up your Forms using king_form for dl or labeled forms. Use king_list for an easy markup of tables in your lists and dl-enabled listings in your detail views. "
  s.email = "gl@salesking.eu"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
    "Gemfile",
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "king_form/MIT-LICENSE",
    "king_form/README.rdoc",
    "king_form/Rakefile",
    "king_form/lib/king_form.rb",
    "king_form/lib/king_form/builder/base.rb",
    "king_form/lib/king_form/builder/definition_list.rb",
    "king_form/lib/king_form/builder/form_fields.rb",
    "king_form/lib/king_form/builder/form_fields_overrides.rb",
    "king_form/lib/king_form/builder/labeled.rb",
    "king_form/lib/king_form/helper.rb",
    "king_form/lib/king_form/nested_form_helper.rb",
    "king_form/lib/king_form/overrides.rb",
    "king_form/test/king_forms_test.rb",
    "king_form/test/test_helper.rb",
    "king_format/MIT-LICENSE",
    "king_format/README.rdoc",
    "king_format/Rakefile",
    "king_format/lib/helpers/date_helper.rb",
    "king_format/lib/helpers/formatting_helper.rb",
    "king_format/lib/helpers/money_helper.rb",
    "king_format/lib/king_format.rb",
    "king_format/lib/model_mixins/has_date_fields.rb",
    "king_format/lib/model_mixins/has_money_fields.rb",
    "king_format/lib/model_mixins/has_percent_fields.rb",
    "king_format/test/king_format_test.rb",
    "king_format/test/test_helper.rb",
    "king_list/MIT-LICENSE",
    "king_list/README.rdoc",
    "king_list/Rakefile",
    "king_list/lib/king_list.rb",
    "king_list/lib/king_list/app_helper.rb",
    "king_list/lib/king_list/builder/show.rb",
    "king_list/lib/king_list/builder/table.rb",
    "king_list/lib/king_list/list_helper.rb",
    "king_list/lib/king_list/overrides.rb",
    "king_views.gemspec",
    "lib/king_views.rb",
    "spec/king_list_spec.rb",
    "spec/rails_app/Rakefile",
    "spec/rails_app/app/controllers/application_controller.rb",
    "spec/rails_app/app/controllers/posts_controller.rb",
    "spec/rails_app/app/helpers/application_helper.rb",
    "spec/rails_app/app/models/comment.rb",
    "spec/rails_app/app/models/person.rb",
    "spec/rails_app/app/models/post.rb",
    "spec/rails_app/app/views/layouts/application.html.erb",
    "spec/rails_app/app/views/posts/index.haml",
    "spec/rails_app/config.ru",
    "spec/rails_app/config/application.rb",
    "spec/rails_app/config/boot.rb",
    "spec/rails_app/config/database.yml",
    "spec/rails_app/config/environment.rb",
    "spec/rails_app/config/environments/development.rb",
    "spec/rails_app/config/environments/production.rb",
    "spec/rails_app/config/environments/test.rb",
    "spec/rails_app/config/initializers/backtrace_silencers.rb",
    "spec/rails_app/config/initializers/inflections.rb",
    "spec/rails_app/config/initializers/mime_types.rb",
    "spec/rails_app/config/initializers/secret_token.rb",
    "spec/rails_app/config/initializers/session_store.rb",
    "spec/rails_app/config/locales/en.yml",
    "spec/rails_app/config/routes.rb",
    "spec/rails_app/db/migrate/20110306212208_create_posts.rb",
    "spec/rails_app/db/migrate/20110306212250_create_comments.rb",
    "spec/rails_app/db/migrate/20110420222224_create_people.rb",
    "spec/rails_app/db/schema.rb",
    "spec/rails_app/public/404.html",
    "spec/rails_app/public/422.html",
    "spec/rails_app/public/500.html",
    "spec/rails_app/public/favicon.ico",
    "spec/rails_app/script/rails",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/salesking/king_views"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Ultraclean haml views with list and forms helpers for rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<king_views>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.5.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<king_views>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 1.5.2"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<king_views>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 1.5.2"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end

