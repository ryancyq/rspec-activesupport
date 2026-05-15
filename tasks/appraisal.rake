# frozen_string_literal: true

namespace :appraisal do
  desc "Install appraisal gemfiles"
  task :setup do
    system("bundle", "exec", "appraisal", "install") || exit(1)
  end
end
