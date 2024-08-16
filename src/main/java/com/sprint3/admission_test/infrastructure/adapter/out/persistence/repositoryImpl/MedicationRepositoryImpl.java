package com.sprint3.admission_test.infrastructure.adapter.out.persistence.repositoryImpl;

import com.sprint3.admission_test.application.ports.out.IMedicationRepository;
import com.sprint3.admission_test.domain.exceptions.NotFoundException;
import com.sprint3.admission_test.domain.model.Category;
import com.sprint3.admission_test.domain.model.Medication;
import com.sprint3.admission_test.infrastructure.adapter.out.persistence.jpaRepository.CategoryJpaRepository;
import com.sprint3.admission_test.infrastructure.adapter.out.persistence.jpaRepository.MedicationJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.OptionalInt;

@Repository
public class MedicationRepositoryImpl implements IMedicationRepository {

    @Autowired
    private MedicationJpaRepository medicationJpaRepository;

    @Autowired
    private CategoryJpaRepository categoryJpaRepository;

    @Override
    public Optional<Medication> findById(Long id) {
        return medicationJpaRepository.findById(id);
    }

    @Override
    public Medication create(Medication medication) {


        if (medication == null) {
            throw new NotFoundException("medication not found");

        }

        if (medication.getExpirationDate() == null) {
            throw new NotFoundException("expirationDate not found");

        }
        if (medication.getCategory() != null) {

            Optional<Category> category = categoryJpaRepository.findById(medication.getCategory().getId());

            if (category.isPresent()) {
                throw new NotFoundException("Category not Found");
            }

            medication.setName(medication.getName());
            medication.setDescription(medication.getDescription());
            medication.setPrice(medication.getPrice());
            medication.setCategory(category.get());
            medication.setExpirationDate(medication.getExpirationDate());

        }
        return medicationJpaRepository.save(medication);


    }







}
