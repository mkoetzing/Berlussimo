<form>
    <div class="input-field">
        <input id="searchbar" type="search" required autocomplete="off">
        <label for="searchbar"><i class="material-icons">search</i></label>
        <i id="searchbarClose" class="material-icons">close</i>
        <div id="searchbarIndicator" class="preloader-wrapper small active" style="position: absolute; top: 14px; right: 0.8rem; display: none">
            <div class="spinner-layer spinner-gray-only">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                    <div class="circle"></div>
                </div><div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
    </div>
</form>

@push('scripts')
<script type="text/javascript">
    $(document).ready(function () {
        $('#searchbar').searchbar({
            loginurl: '{{ url('/login') }}',
            objekturl: '{{ route('legacy::haeuser::index', ['haus_raus' => 'haus_kurz', 'objekt_id' => '']) }}',
            hausurl: '{{ route('legacy::einheiten::index', ['einheit_raus' => 'einhiet_kurz', 'haus_id' => '']) }}',
            einheiturl: '{{ route('legacy::uebersicht::index', ['anzeigen' => 'einheit', 'einheit_id' => '']) }}',
            personurl: '/',
            partnerurl: '{{ route('legacy::partner::index', ['option' => 'partner_im_detail', 'partner_id' => '']) }}'
        });
    });
</script>
@endpush