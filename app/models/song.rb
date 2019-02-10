class Song < ActiveRecord::Base
  validates :title, presence: true
<<<<<<< HEAD
  validate :invalid_if_release_in_future,
    :valid_without_release_year_if_not_released,
    :invalid_if_release_same_songs_in_a_year



  def invalid_if_release_in_future
    if release_year.present? && release_year > Time.now.year
=======
  validates :release_year, presence: true

  validate :invalid_if_release_in_future


  def invalid_if_release_in_future
    if release_year.present? && title.present? && !!find_song(title) && release_year >= Time.now.year
>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
      errors.add(:release_year, "can't release song yet")
    end
  end

<<<<<<< HEAD
  def valid_without_release_year_if_not_released
    if !release_year && released
      errors.add(:released, "can't release song")
    end
  end

  def invalid_if_release_same_songs_in_a_year
    if find_song(title) != nil
      if released && find_song(title).release_year == release_year
        errors.add(:released, "can't release song")
      end
    end
  end

=======
>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
  def find_song(title)
    Song.find_by(title: title)
  end

<<<<<<< HEAD
=======

>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
end
