module MainHelper

  def verify_input(artist)
    #accept letters, numbers, space, dashes, underscore
    print 'replace with: ' + artist.gsub(/[^0-9a-z_\-\s]/i, '')
    return artist.gsub(/[^0-9a-z_\-\s]/i, '')
  end

end
