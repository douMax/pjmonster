class InvoicesController < ApplicationController

  def import_invoices
    require 'csv'
    puts "****** Upload starting....."

    csv = CSV.read(params[:file].path, headers: true)
    csv.each do |row|
      row_hash = row.to_hash
      # create vendor if vendor not existed
      ven = Vendor.where('lower(name) like ?', row_hash["vendor"].downcase).first
      if ven.nil?
        ven = Vendor.create name:row_hash["vendor"].titleize
        puts "****** vendor created: #{ven.name}"
      else
        puts "****** vendor found: #{ven.name}"
      end
      # create new invoice
      row_hash.delete("vendor")
      inv = Invoice.new row_hash
      inv.vendor = ven
      inv.save
      puts "***** invoice created"

    end
    redirect_to request.referrer, notice: "#{csv.count} invoices imported"
  end

  def index
  end

  def new
    @invoice = Invoice.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def invoice_params
    params.require(:booking).permit(:name,
                                    :invoice_number,
                                    :description,
                                    :status,
                                    :invoice_date,
                                    :due_date,
                                    :is_a_claim,
                                    :project_id,
                                    :vendor_id,
                                    :payment_batch_id,
                                    :file_url
                                    )

  end
end
