class PhilosophyFile < ActiveRecord::Base
  require 'paperclip'
  #attr_accessible :name
  #attr_accessible :dates
  #attr_accessible :subjects
acts_as_taggable
  has_attached_file :attachment
#  validates_presence_of :attachment_file_size
  validates_presence_of :name

  def subjects
    return ""
  end

  def subjects=(name)
    @subject = name
  end

  def self.subject_list
    return APP_CONFIG['subjects']
  end

  def dates
    return ""
  end

  def dates=(name)
    @class_date = name
  end

  def self.dates_list
    return APP_CONFIG['dates']

  end


  def before_save
    if !@class_date.empty?
      self.tag_list << @class_date
    end
    if !@subject.empty?
      self.tag_list << @subject
    end
  end
   


end
