# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
benchmark_set = BenchmarkSet.create(bm_id: 'NAT', name: 'National Benchmark', percentile:70)
BenchmarkRun.create(benchmark_set_id: benchmark_set.id, act_month: 201201, note: "Note")

user = User.create(user_name: 'Meindert', first_name:'Meindert', last_name:"Hoving", email:"meindert@shuntyard.co.za")

