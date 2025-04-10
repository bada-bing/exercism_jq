def new_remote_control_car(nickname):
  {
    "battery_percentage": 100,
    "distance_driven_in_meters": 0,
    "nickname": nickname
  }
;

def new_remote_control_car:
  new_remote_control_car(null)
;

def display_distance:
   "\(.distance_driven_in_meters) meters"
;

def display_battery:
  # Implement the required output string
  "Battery " + if .battery_percentage > 0 then "at \(.battery_percentage)%" else "empty" end
;

def drive:
  # Update the input's attributes as required
  if (.battery_percentage > 0) then .battery_percentage-=1 | .distance_driven_in_meters +=20 else . end
;
