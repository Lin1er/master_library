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

        // URL endpoint API
        $url = "https://openlibrary.org/search.json?q={$query}";

        // Inisialisasi HTTP client
        $client = new Client();

        // Kirim permintaan GET ke API
        try {
            $response = $client->get($url);

            // Mendapatkan data respons dalam bentuk JSON
            $data = json_decode($response->getBody()->getContents());
            $title = 'Open Library';

            // Tampilkan data dalam tampilan (view)
            return view('pages.openlibrary.home', compact('data', 'title'));
        } catch (\GuzzleHttp\Exception\RequestException $e) {
            // Mengelola kesalahan jika permintaan gagal
            $errorMessage = $e->getMessage();
            return view('error', compact('errorMessage'));
        }
    }
}
