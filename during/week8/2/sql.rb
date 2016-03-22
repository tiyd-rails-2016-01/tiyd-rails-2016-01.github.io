  # SELECT * 
  # FROM assemblies AS a
  #   INNER JOIN sequences AS s ON a.id = s.assembly_id
  #   INNER JOIN genes AS g ON s.id = g.sequence_id
  #   INNER JOIN hits AS h ON g.id = h.subject_id AND h.subject_type = "Gene"
  # WHERE a.name LIKE "%a%"
  #   OR g.dna LIKE "%a%"
  #   OR h.match_gene_name LIKE "%a%";

  def search
    @start_time = Time.now

    @hits = Hit.joins("JOIN genes ON genes.id = hits.subject_id AND hits.subject_type = 'Gene'")
        .joins("JOIN sequences ON sequences.id = genes.sequence_id")
        .joins("JOIN assemblies ON assemblies.id = sequences.assembly_id")
        .where("assemblies.name LIKE '%?%' OR genes.dna LIKE '%?%' OR hits.match_gene_name LIKE '%?%'",
            params[:search], params[:search], params[:search])
        .order("hits.percent_similarity DESC")

    @memory_used = memory_in_mb
    render 'all_data'
  end
