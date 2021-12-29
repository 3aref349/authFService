import {
    PrimaryGeneratedColumn,
    BaseEntity,
    CreateDateColumn,
    UpdateDateColumn,
  } from "typeorm";
  import { classToPlain } from "class-transformer";
  
  export default abstract class Entity extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;
  
    @CreateDateColumn({type: 'date'})
    createdAt: Date;
  
    @UpdateDateColumn({type: 'date'})
    updatedAt: Date;
  
    toJSON() {
      return classToPlain(this);
    }
  }
  