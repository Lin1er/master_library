<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;


class ApiController extends Controller
{
    public function search(Request $request)
    {
        // Ambil kata kunci pencarian dari input form
        $query = $request->input('query');

        // // Ganti 'YOUR_API_KEY' dengan kunci API Anda
        // $apiKey = 'YOUR_API_KEY';

        // URL endpoint API
        // $url = "https://openlibrary.org/search.json?q={$query}&api_key={$apiKey}";
        $url = "https://openlibrary.org/search.json?q={$query}";

        // Inisialisasi HTTP client
        $client = new Client();

        // Kirim permintaan GET ke API
        $response = $client->get($url);

        // Mendapatkan data respons dalam bentuk JSON
        $data = json_decode($response->getBody()->getContents());
        $title = 'Open Library';

        // Tampilkan data dalam tampilan (view)
        return view('pages.openlibrary.search', compact('data', 'title'));
    }
}
