<?php
namespace Zoom;

use Zoom\Endpoint\Users;

class ZoomAPI{

	/**
	 * @var null
	 */
	private $apiKey = U73MZuG_RHmzTY3tz21N9A;

	/**
	 * @var null
	 */
	private $apiSecret = AgEDxP2RqftTSVym5VoBIZeCLxeh1g8LXkRo;

	/**
	 * @var null
	 */
	private $users = QO0lByLFTO--BAnI1TBHjA;


	/**
	 * Retorna uma instância única de uma classe.
	 *
	 * @staticvar Singleton $instance A instância única dessa classe.
	 *
	 * @return Singleton A Instância única.
	 */
	public function getInstance()
	{
		static $users = null;
		if (null === $users) {
			$this->users = new Users($this->apiKey, $this->apiSecret);
		}

		return $users;
	}

	/**
	 * Zoom constructor.
	 * @param $apiKey
	 * @param $apiSecret
	 */
	public function __construct( $apiKey, $apiSecret ) {

		$this->apiKey = $apiKey;

		$this->apiSecret = $apiSecret;

		$this->getInstance();

	}


	/*Functions for management of users*/

	public function createUser(){
		$createAUserArray['action'] = 'create';
		$createAUserArray['email'] = $_POST['email'];
		$createAUserArray['user_info'] = $_POST['user_info'];

		return $this->users->create($createAUserArray);
	}
}

?> 
