<?php
class Users extends Model {

	public function createUserLogin($name, $email, $pass) {

		$sql = "INSERT INTO users (name, email, password) VALUES (:name, :email, :pass)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":name", $name);
		$sql->bindValue(":email", $email);
		$sql->bindValue(":pass", md5($pass));
		$sql->execute();

		

	}
	
	public function emailExists($email) {

		$sql = "SELECT * FROM users WHERE email = :email";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":email", $email);
		$sql->execute();

		if($sql->rowCount() > 0) {
			return true;
		} else {
			return false;
		}

	}
	public function getlogin($email, $password) {
		$_SESSION['logado'] = '';
		
		$sql = "SELECT * FROM users WHERE email = :email AND password = :password";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":email", $email);
		$sql->bindValue(":password", md5($password));
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			
			$_SESSION['logado'] = $sql['id'];
		}
		return $_SESSION['logado'];
	}
	
	public function validate($email, $pass) {
		$uid = '';

		$sql = "SELECT * FROM users WHERE email = :email AND password = :pass";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":email", $email);
		$sql->bindValue(":pass", md5($pass));
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			$uid = $sql['id'];

			
		}

		return $uid;
	}
	

	public function createUser($name, $email, $pass) {

		$sql = "INSERT INTO users (name, email, password) VALUES (:name, :email, :pass)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":name", $name);
		$sql->bindValue(":email", $email);
		$sql->bindValue(":pass", md5($pass));
		$sql->execute();

		return $this->db->lastInsertId();

	}
	



	public function validateLogin($email, $password) {

		$sql = "SELECT id FROM users WHERE email = :email AND password = :password AND admin = 1";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(':email', $email);
		$sql->bindValue(':password', md5($password));
		$sql->execute();

		if($sql->rowCount() > 0) {
			$data = $sql->fetch();

			$token = md5(time().rand(0,999).$data['id'].time());

			$sql = "UPDATE users SET token = :token WHERE id = :id";
			$sql = $this->db->prepare($sql);
			$sql->bindValue(':token', $token);
			$sql->bindValue(':id', $data['id']);
			$sql->execute();

			$_SESSION['token'] = $token;

			return true;
		}

		return false;
	}

	public function getId() {
		return $this->uid;
	}










}