## Dependencies

### Cocoapods

Initialize:

```bash
cd project_name
pod init
```

Podfile:

```ruby
target 'SomeProject' do
  use_frameworks!

  target 'SomeProject' do
    pod 'AFNetworking', '~> 3.0'
  end
end
```

Install:

```bash
pod install
```

Then:

- open ProjectName.xcworkspace;
- build;
- import package;
- done.
