<?php
namespace App\Entity;

use App\Entity\Property;
use Symfony\Component\Validator\Constraints as Assert;

class Contact{

    /**
     * @var string|null
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=100)
     */

    private $firstname;

     /**
     * @var string|null
     * @Assert\NotBlank()
     * @Assert\Length(min=2, max=100)
     */

    private $lastname;

     /**
     * @var string|null
     * @Assert\NotBlank()
     * @Assert\Regex(
     * pattern="/[0-9]{10}/"
     * )
     */

    private $phone;

    /**
     * @var string|null
     * @Assert\NotBlank()
     * @Assert\Email()
     */

    private $email;

    /**
     * @var string|null
     * @Assert\NotBlank()
     * @Assert\Length(min=10)
     */

    private $message;

    /**
     * @var Property|null
     */

    private $property;

    /**
     * Get the value of firstname
     */ 
    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    /**
     * Set the value of firstname
     * @param string|null $firstname
     * @return  Contact
     */ 
    public function setFirstname(?string $firstname): Contact
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * Get the value of lastname
     */ 
    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    /**
     * Set the value of lastname
     * @param string|null $lastname
     * @return  Contact
     */ 
    public function setLastname(?string $lastname): Contact
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * Get the value of phone
     */ 
    public function getPhone(): ?string
    {
        return $this->phone;
    }

    /**
     * Set the value of phone
     * @param string|null $phone
     * @return  Contact
     */ 
    public function setPhone(?string $phone): Contact
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get the value of email
     */ 
    public function getEmail(): ?string
    {
        return $this->email;
    }

    /**
     * Set the value of email
     * @param string|null $email
     * @return  Contact
     */ 
    public function setEmail(?string $email): Contact
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get the value of message
     */ 
    public function getMessage(): ?string
    {
        return $this->message;
    }

    /**
     * Set the value of message
     * @param string|null $message
     * @return  Contact
     */ 
    public function setMessage(?string $message): Contact
    {
        $this->message = $message;

        return $this;
    }

    /**
     * Get the value of property
     */ 
    public function getProperty(): ?Property
    {
        return $this->property;
    }

    /**
     * Set the value of property
     * @param Property|null $property
     * @return  Contact
     */ 
    public function setProperty(?Property $property): Contact
    {
        $this->property = $property;

        return $this;
    }
}