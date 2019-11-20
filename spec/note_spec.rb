require 'note'

describe Note do
  it 'returns a title and the body of the note' do
  formatter_double = double :formatter, format: "Title: Note\nsome_stuff"
   note = Note.new("title","body",formatter_double)
   expect(note.display).to eq "Title: Note\nsome_stuff"
 end

 it 'has a title' do
   note = Note.new("some-title", "some-body")
   expect(note.title).to eq "some-title"
 end

 it 'has a body' do
   note = Note.new("some-title", "some-body")
   expect(note.body).to eq "some-body"
 end
end

describe NoteFormatter do
  it 'formats a note' do
  note = double(:note, title: "some-title", body: "some-body")
  expect(subject.format(note)).to eq "Title: some-title\nsome-body"
  end
end
