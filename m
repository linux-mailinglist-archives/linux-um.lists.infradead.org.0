Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC63B1150
	for <lists+linux-um@lfdr.de>; Thu, 12 Sep 2019 16:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Nxsyfn4qExcUxJj8HTZcYAdtYqccZIpupzWN4zZ2aQ=; b=ZEn5wzDt0v34Xvv8/YfRWWiI7
	j0uTyxu2t/xlUIJ5jXXIIFXxAl2IFmHdOQ4BRmE15/d1CX4GWpS6g4xfWTlYI2Y9Mvxs6JkGd05Qj
	rKIKsPi9xsCYkOhYOaw63nXpL2JOelNrN/zTOz6LZPDGPOBfAIZVx4nLdL3KQAgOjpSCdAf7eaM9Z
	2bPHm4KX+fMw6CVLLG+Jj8Oiv+q+pz/ObXTP9btnSYbhphdmFXOFYuiGfe0yO/xuDQKJtikfQvnmb
	BYRHnxP3KUVh6ostuIzVk1aZxYNXroG8RCWiJWia9B3Mqr7jcxGiFPPzBQAfEOisG53qQw5p6yAxM
	U/4sasSfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QId-0005pT-Mh; Thu, 12 Sep 2019 14:42:19 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QIa-0005p9-4L
 for linux-um@lists.infradead.org; Thu, 12 Sep 2019 14:42:17 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i8QIP-0003O4-3M; Thu, 12 Sep 2019 14:42:05 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1i8QIM-0004vM-QI; Thu, 12 Sep 2019 15:42:04 +0100
Subject: Re: Bug#938962: user-mode-linux needs update for new linux
To: rrs@debian.org, linux-um@lists.infradead.org,
 Richard Weinberger <richard@nod.at>
References: <20190830152801.GA23318@debian.org>
 <f13e90782de567a8537a15dec1834a9b8c27bd6b.camel@debian.org>
 <CAHt6kzG5V3N9i68jMvxwz-5kk9h709QZsqcH9uM+cthCam87Lg@mail.gmail.com>
 <2947157812216eae1aad2840b8981163a7af2209.camel@debian.org>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <9bd76406-dab6-74c8-7e0a-92468e15d150@kot-begemot.co.uk>
Date: Thu, 12 Sep 2019 15:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2947157812216eae1aad2840b8981163a7af2209.camel@debian.org>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_074216_173798_DF7BE3F0 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: 938962@bugs.debian.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAxMi8wOS8yMDE5IDEzOjE0LCBSaXRlc2ggUmFqIFNhcnJhZiB3cm90ZToKPiBIaSwKPiAK
PiBJIGFtIG5vdCBzdXJlIGlmIHRoaXMgaGFzIGJlZW4gcmVwb3J0ZWQgdXBzdHJlYW0gYnV0IHdp
dGggbGlicGNhcCAxLjksCj4gdXNlciBtb2RlIGxpbnV4IGZhaWxzIHRvIGJ1aWxkLiBUaGUgYnVp
bGQgZmFpbHVyZSBoYXBwZW5zIHdpdGggYm90aCwKPiA1LjIgYW5kIDQuMTkgTFRTIGtlcm5lbHMu
Cj4gCj4gQSBtdWNoIGRldGFpbGVkIHJlcG9ydCBpcyBhdmFpbGFibGUgYXQ6Cj4gaHR0cHM6Ly9i
dWdzLmRlYmlhbi5vcmcvY2dpLWJpbi9idWdyZXBvcnQuY2dpP2J1Zz05Mzg5NjIKPiAKPiBsaWJw
Y2FwIDEuOSBpbnRyb2R1Y2VzIGBwY2FwX29wZW5gIHdoaWNoIGlzIGFsc28gZGVjbGFyZWQgaW4g
bGludXgKPiBoZWFkZXJzIGluIGFyY2gvdW0vZHJpdmVycy9wY2FwX3VzZXIuYwo+IAo+IAoKCkkg
dGhpbmsgdGhlIGJlc3Qgd2F5IGZvcndhcmQgaGVyZSBpcyB0byBraWxsIHRoZSBvbGQgbGlicGNh
cCBkcml2ZXIgCmFsdG9nZXRoZXIuCgpZb3UgZ2V0IHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgZnJv
bSB2ZWN0b3IgcmF3IGluY2x1ZGluZyB0aGUgYWJpbGl0eSB0byAKbG9hZCBhIGJwZiBmaWx0ZXIu
CgpUaGUgb25seSB0aGluZyB0aGF0IG5lZWRzIGlzIGEgd3JhcHBlciB0byBjb21waWxlIHRoZSBm
aWx0ZXIgYmVmb3JlIApoYW5kaW5nIGl0IHRvIFVNTC4KCkEgc2lkZSBlZmZlY3QgaXMgdGhhdCBp
dCBpcyB+IDEwKyB0aW1lIGZhc3RlciAtIGluIHRoZSBtdWx0aWdpZ2FiaXQgcmFuZ2UuCgpBbHRl
cm5hdGl2ZWx5LCBJIGNhbiB3cmFwIGl0IHNvIGl0IGxvb2tzIGxpa2UgcGNhcCB0byBhbnkgZXhp
c3RpbmcgCnNjcmlwdHMgYW5kIGlzIGFjdHVhbGx5IHZlY3RvciB1bmRlcm5lYXRoLCBidXQgdGhh
dCB3aWxsIGxvc2Ugc29tZSBvZiAKdGhlIHR1bmFibGVzLCBsaWtlIG9mZmxvYWRzLCB2ZWN0b3Ig
ZGVwdGgsIGV0Yy4KCgo+IFRoYW5rcywKPiBSaXRlc2gKPiAKPiBPbiBTYXQsIDIwMTktMDktMDcg
YXQgMTc6MTggKzAyMDAsIFJvbWFpbiBGcmFuY29pc2Ugd3JvdGU6Cj4+IEhpLAo+Pgo+PiBPbiBU
dWUsIFNlcCAzLCAyMDE5IGF0IDM6MjEgUE0gUml0ZXNoIFJhaiBTYXJyYWYgPHJyc0BkZWJpYW4u
b3JnPgo+PiB3cm90ZToKPj4gWy4uLl0KPj4+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAvdXNyL2lu
Y2x1ZGUvcGNhcC5oOjQzLAo+Pj4gICAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL3VtL2RyaXZl
cnMvcGNhcF91c2VyLmM6NzoKPj4+IC91c3IvaW5jbHVkZS9wY2FwL3BjYXAuaDo4MzU6MTg6IG5v
dGU6IHByZXZpb3VzIGRlY2xhcmF0aW9uIG9mCj4+PiDigJhwY2FwX29wZW7igJkgd2FzIGhlcmUK
Pj4+ICAgUENBUF9BUEkgcGNhcF90ICpwY2FwX29wZW4oY29uc3QgY2hhciAqc291cmNlLCBpbnQg
c25hcGxlbiwgaW50Cj4+PiBmbGFncywKPj4+ICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn4K
Pj4+IG1ha2VbMl06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDozMDk6Cj4+PiBhcmNoL3Vt
L2RyaXZlcnMvcGNhcF91c2VyLm9dIEVycm9yIDEKPj4KPj4gbGlicGNhcCAxLjkgaW5jbHVkZXMg
c3VwcG9ydCBmb3IgcmVtb3RlIGNhcHR1cmUsIHdoaWNoIHdhcyBvcmlnaW5hbGx5Cj4+IGEgcGFy
dCBvZiBXaW5QY2FwIGV4dGVuc2lvbnMuIFRoZSBgcGNhcF9vcGVuKCknIHN5bWJvbCBpcyBwYXJ0
IG9mCj4+IHRoYXQKPj4gQVBJIGFuZCB0aGF0J3Mgd2h5IGl0J3MgZGVmaW5lZCBpbiB0aGUgaGVh
ZGVyIGZpbGUgZXZlbiB0aG91Z2ggcmVtb3RlCj4+IHN1cHBvcnQgaXMgbm90IGVuYWJsZWQgaW4g
RGViaWFuLiBJIHN1Z2dlc3QgeW91IHJlbmFtZSB0aGUgZnVuY3Rpb24KPj4gZGVmaW5lZCBpbiB5
b3VyIHByb2dyYW0gc28gdGhhdCBpdCBkb2Vzbid0IGNvbmZsaWN0IHdpdGggbGlicGNhcC4KPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gbGlu
dXgtdW0gbWFpbGluZyBsaXN0Cj4+IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQoKLS0gCkFu
dG9uIFIuIEl2YW5vdgpodHRwczovL3d3dy5rb3QtYmVnZW1vdC5jby51ay8KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXVtIG1haWxpbmcgbGlz
dApsaW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtdW0K
