
def time_string (total_seconds)
    hours = total_seconds / (60 * 60) #en heure
    minutes = (total_seconds / 60) % 60 #en minute
    seconds = total_seconds % 60 #capte le second

    format("%02d:%02d:%02d", hours, minutes, seconds)

end
