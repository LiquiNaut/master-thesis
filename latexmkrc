
$pdf_mode = 1;
$pdflatex = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
# $out_dir = '.build'; # Removed custom output dir to simplify build

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {

  my ($base_name, $path) = fileparse( $_[0] );
  my $opt = '';
  pushd $path;
  
  if ( $silent ) {
    $opt = '-q'
  };

  my $ret = system "makeglossaries $opt $base_name";  
  popd;
  return $ret;
}