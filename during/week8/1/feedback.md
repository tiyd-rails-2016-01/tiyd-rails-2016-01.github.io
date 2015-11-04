---
layout: default
---

## Database Optimizations Feedback

    @assembly = Assembly.find_by_name(params[:name])
    @assembly.sequences.each do |s|
      s.genes.each do |g|
        g.hits.each do |h|
          @hits << h
        end
      end
    end

    @assembly = Assembly.where(name: params[:name]).take
    Sequence.where(assembly_id: @assembly.id).find_each do |s|
      Gene.where(sequence_id: s.id).find_each do |g|
        g.hits.each do |h|
          @hits << h
        end
      end
    end
