-- CreateTable
CREATE TABLE `receitas` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ingredientes` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ReceitaIngrediente` (
    `id` VARCHAR(191) NOT NULL,
    `id_receita` VARCHAR(191) NOT NULL,
    `id_ingrediente` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ReceitaIngrediente` ADD CONSTRAINT `ReceitaIngrediente_id_receita_fkey` FOREIGN KEY (`id_receita`) REFERENCES `receitas`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ReceitaIngrediente` ADD CONSTRAINT `ReceitaIngrediente_id_ingrediente_fkey` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
