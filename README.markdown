#### Start the Jobs Queuing

```plain
bundle exec ruby -r './app/register' -e "Register.new.place_big_order('Jeff', 'Coke')"
```

#### Start Workers

```plain
cd workers
QUEUE=drinks bundle exec rake resque:work
```
