require 'prawn'
require 'prawn/table'

class SectionPdfGenerator
  def initialize(section)
    @section = section
  end

  def render
    Prawn::Document.new do |pdf|
      pdf.text "HEUC Portal Section Sheet", size: 20, style: :bold
      pdf.move_down 10

      pdf.text "Section Short Name: #{@section.section_short_name}", size: 12
      pdf.text "Section Full Name: #{@section.section_full_name}", size: 12
      pdf.text "Year: #{@section.year}", size: 12
      pdf.text "Semester: #{@section.semester}", size: 12
      pdf.text "Batch: #{@section.batch}", size: 12
      pdf.text "Total Capacity: #{@section.total_capacity}", size: 12
      pdf.text "Created By: #{@section.created_by}", size: 12
      pdf.text "Updated By: #{@section.updated_by}", size: 12
      pdf.move_down 20

      pdf.text "Students List", size: 18, style: :bold
      pdf.move_down 10

      student_data = [["Student Full Name", "Student ID", "Department", "Program Name", "Year", "Semester"]]
      @section.students.each do |student|
        student_data << [student.name.full, student.student_id, student.department.department_name, student.program.program_name, student.year, student.semester]
      end

      pdf.table(student_data, header: true, row_colors: ["F0F0F0", "FFFFFF"]) do
        row(0).font_style = :bold
        row(0).background_color = 'CCCCCC'
        cells.padding = 8
        cells.border_width = 0.5
        cells.border_color = 'AAAAAA'
      end
    end.render
  end
end
require 'prawn'
require 'prawn/table'

class SectionPdfGenerator
  def initialize(section)
    @section = section
  end

  def render
    Prawn::Document.new do |pdf|
      pdf.text "HEUC Portal Section Sheet", size: 20, style: :bold
      pdf.move_down 10

      pdf.text "Section Short Name: #{@section.section_short_name}", size: 12
      pdf.text "Section Full Name: #{@section.section_full_name}", size: 12
      pdf.text "Year: #{@section.year}", size: 12
      pdf.text "Semester: #{@section.semester}", size: 12
      pdf.text "Batch: #{@section.batch}", size: 12
      pdf.text "Total Capacity: #{@section.total_capacity}", size: 12
      #pdf.text "Created By: #{@section.created_by}", size: 12
      #pdf.text "Updated By: #{@section.updated_by}", size: 12
      pdf.move_down 20

      pdf.text "Students List", size: 18, style: :bold
      pdf.move_down 10

      student_data = [["Student Full Name", "Student ID", "Department", "Program Name", "Year", "Semester"]]
      @section.students.each do |student|
        student_data << [student.name.full, student.student_id, student.department.department_name, student.program.program_name, student.year, student.semester]
      end

      pdf.table(student_data, header: true, row_colors: ["F0F0F0", "FFFFFF"]) do
        row(0).font_style = :bold
        row(0).background_color = 'CCCCCC'
        cells.padding = 8
        cells.border_width = 0.5
        cells.border_color = 'AAAAAA'
      end
    end.render
  end
end