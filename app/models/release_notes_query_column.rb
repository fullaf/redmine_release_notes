class ReleaseNotesQueryColumn < QueryColumn
  def initialize
    self.name = :release_notes
    self.sortable = false
    self.groupable = false#'release_notes'
    @inline = true
    @caption_key = 'release_notes.title_plural'
  end

  # not sure if this is ever used
  def value(object)
    I18n.t(object.release_note.status, :scope => 'release_notes.status')
  end
end
