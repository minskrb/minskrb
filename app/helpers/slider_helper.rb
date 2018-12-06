module SliderHelper
  LIMIT_SPEAKERS = 4

  def limit_speakers(event)
    event.event_items.talks.first(LIMIT_SPEAKERS)
  end
end
