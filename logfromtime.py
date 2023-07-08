from datetime import datetime, timezone


start_time_str = "2021-05-30 12:22:00"
end_time_str = "2021-05-30 12:33:12"

start_time = datetime.strptime(start_time_str, "%Y-%m-%d %H:%M:%S").replace(tzinfo=timezone.utc)
end_time = datetime.strptime(end_time_str, "%Y-%m-%d %H:%M:%S").replace(tzinfo=timezone.utc)

log_file = "apache_access"

filtered_requests = []

with open(log_file, "r") as file:
    for line in file:
        timestamp_str = line.split("[")[1].split("]")[0]
        timestamp = datetime.strptime(timestamp_str, "%d/%b/%Y:%H:%M:%S %z").astimezone(timezone.utc)
        if start_time <= timestamp <= end_time:
            filtered_requests.append(line)

for request in filtered_requests:
    print(request)
