def not_found
  respond_to do |format|
    format.html { render :status => 404 }
    format.json { render :status => 404 }
  end
end
