CREATE TABLE if not exists Samples (
    sample_id INT,
    dna_sequence VARCHAR(255),
    species VARCHAR(100)
);
Truncate table Samples;
insert into Samples (sample_id, dna_sequence, species) values ('1', 'ATGCTAGCTAGCTAA', 'Human');
insert into Samples (sample_id, dna_sequence, species) values ('2', 'GGGTCAATCATC', 'Human');
insert into Samples (sample_id, dna_sequence, species) values ('3', 'ATATATCGTAGCTA', 'Human');
insert into Samples (sample_id, dna_sequence, species) values ('4', 'ATGGGGTCATCATAA', 'Mouse');
insert into Samples (sample_id, dna_sequence, species) values ('5', 'TCAGTCAGTCAG', 'Mouse');
insert into Samples (sample_id, dna_sequence, species) values ('6', 'ATATCGCGCTAG', 'Zebrafish');
insert into Samples (sample_id, dna_sequence, species) values ('7', 'CGTATGCGTCGTA', 'Zebrafish');



select * , case when dna_sequence like "ATG%" then True else False end as Start_Codon,
			case when dna_sequence like "%TAA" or 
                dna_sequence like "%TAG" or 
                dna_sequence like "%TGA" then True else False end as Stop_Codons,
			case when dna_sequence like "%ATAT%" then True else False end as Repetated_ATAT_pattern,
            case when dna_sequence REGEXP 'G{3,}' then True else False end as 3_consecutive_G
from Samples	
