#!/usr/bin/env ruby
#
#
#

task :default => [ 'go:test:zero' ]

namespace :go do 
    namespace :format do
        desc "Format 00_hello_world"
        task :zero do
            Dir.chdir('00_hello_world')
            sh "go fmt main.go"
            Dir.chdir('../')
        end
        
        desc "Format 01_accept_user_input"
        task :one do
            Dir.chdir('01_accept_user_input')
            sh "go fmt main.go"
            Dir.chdir('../')
        end
        
        desc "Format 02_specific_users_only"
        task :two do
            Dir.chdir('02_specific_users_only')
            sh "go fmt main.go"
            Dir.chdir('../')
        end

	desc 'Format 03_sum_of_numbers_to_n'
	task :three do
	    Dir.chdir('03_sum_of_numbers_to_n')
	    sh 'go fmt main.go'
	    Dir.chdir('../')
	end
    end
    
    namespace :install do
        desc "Install 00_hello_world"
        task :zero do
            Dir.chdir('00_hello_world')
            sh "go install"
            Dir.chdir('../')
        end
        
        desc "Install 01_accept_user_input"
        task :one do
            Dir.chdir('01_accept_user_input')
            sh "go install"
            Dir.chdir('../')
        end
        
        desc "Install 02_specific_users_only"
        task :two do
            Dir.chdir('02_specific_users_only')
            sh "go install"
            Dir.chdir('../')
        end
    end
    
    namespace :test do
        desc "Run tests for 00_hello_world"
        task :zero do
            Dir.chdir('00_hello_world')
            sh "go test"
            Dir.chdir('../')
        end
        
        desc "Run tests for 01_accept_user_input"
        task :one do
            Dir.chdir('01_accept_user_input')
            sh "go test"
            Dir.chdir('../')
        end
        
        desc "Run tests for 02_specific_users_only"
        task :two  do
            Dir.chdir('02_specific_users_only')
            sh "go test"
            Dir.chdir('../')
            sh "echo Phillip| go run main.go"
            sh "echo Phillip | go run main.go"
            sh "echo \"Phillip\" | go run main.go"
        end

	desc 'Run tests for 03_sum_of_numbers_to_n'
	task :three do
	    Dir.chdir('03_sum_of_numbers_to_n')
	    sh 'go test'
	    Dir.chdir('../')
	end
    end
end
