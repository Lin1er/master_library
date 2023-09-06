<div>

    <div class="card p-2">
        @foreach ($comments as $comment)
        <div class="">
            <form action="{{ route('comments.destroy', $comment->id) }}" method="POST">
                @csrf
                @method('DELETE')
                <p>{{ $comment->user->username }}: {{ $comment->content }} <button type="submit" class="btn btn-danger">Hapus</button></p>         
            </form>
        </div>
        @endforeach
    </div>

    <form action="/comment/add" method="POST">
    @csrf
    <textarea class="form-control" name="content" id="content_comment" rows="3" placeholder="Beri Ulasan"></textarea>
    <input type="hidden" name="book_id"value="{{ $book->id }}">
    <input type="submit" class="btn btn-primary">
    </form>
</div>