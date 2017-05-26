# Map

## Adding a map

### Storyboard

- Add a MKMapView

### Main screen

- Go to Build Phases
- Click Link Binary With Libraries
- Add MapKit.framework

### Setting requirements

- Go to Info.plist
- Click Required device capabilities
- Add item with value gps
- Add item with value location-services

- At the top of the Info.plist
- Add key Privacy - Location When In Use Usage Description
- Add value to it (A description) 
