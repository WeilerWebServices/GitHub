module TeachersPet
  class Cli
    option :organization, required: true
    option :repository, required: true
    option :public, type: :boolean, default: false, desc: "Make the repositories public"

    students_option
    common_options

    desc 'create_repos', "Create assignment repositories for students."
    def create_repos
      TeachersPet::Actions::CreateRepos.new(options).run
    end
  end
end
